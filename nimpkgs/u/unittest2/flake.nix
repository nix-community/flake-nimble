{
  description = ''
    unittest fork focused on parallel test execution
  '';
  inputs.src-unittest2.url = "https://github.com/status-im/nim-unittest2";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
