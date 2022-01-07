{
  description = ''
    small/tiny, flatfile, jsonl based, inprogress database for nim
  '';
  inputs.src-flatdb.url = "https://github.com/enthus1ast/flatdb";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
