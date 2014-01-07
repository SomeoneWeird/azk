--require('spec.helper')

local cli   = require('azk.cli')
local shell = require('azk.cli.shell')

describe("Azk #cli test", function()
  it("should show help if blank invocation", function()
    local output = shell.io_capture(function()
      cli.run()
    end)
  end)

  it("should be return version", function()
    local output = shell.io_capture(function()
      cli.run("--version")
    end)
    assert.are.equal(output, "azk 0.0.1\n")
  end)
end)