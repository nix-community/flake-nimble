{
  description = ''
    Thin interface for libFuzzer, an in-process, coverage-guided, evolutionary fuzzing engine.
  '';
  inputs.src-libfuzzer.url = "https://github.com/planetis-m/libfuzzer";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
