{
  description = ''
    Erlang/Elixir NIFs for nim
  '';
  inputs.src-nimler.url = "https://github.com/wltsmrz/nimler";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
