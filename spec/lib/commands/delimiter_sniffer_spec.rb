# typed: false
# frozen_string_literal: true

require "spec_helper"

describe Commands::DelimiterSniffer do
  describe ".find" do
    subject(:find_delimeter) { described_class.find_delimeter(path) }

    let(:path) { "./spec/fixtures/vehicle_info_with_comma_separator.txt" }

    context "when , delimiter" do
      it "returns separator" do
        expect(find_delimeter).to eq(",")
      end
    end

    context "when ; delimiter" do
      let(:path) { "./spec/fixtures/vehicle_info_with_semicolon_separator.txt" }

      it "returns separator" do
        expect(find_delimeter).to eq(";")
      end
    end

    context "when | delimiter" do
      let(:path) { "./spec/fixtures/vehicle_info_with_pipe_separator.txt" }

      it "returns separator" do
        expect(find_delimeter).to eq("|")
      end
    end

    context "when empty file" do
      it "raises error" do
        expect_any_instance_of(described_class).to receive(:first).at_least(1).and_return(nil)
        expect { find_delimeter }.to raise_error(described_class::EmptyFile)
      end
    end

    context "when no column separator is found" do
      it "raises error" do
        expect_any_instance_of(described_class).to receive(:first).at_least(1).and_return("")

        expect { find_delimeter }.to raise_error(described_class::NoColumnSeparatorFound)
      end
    end

    context "when possible mixed delimieter" do
      let(:path) { "./spec/fixtures/vehicle_info_with_pipe_separator_with_commas.txt" }
      it "returns separator" do
        expect(find_delimeter).to eq("|")
      end
    end
  end
end
