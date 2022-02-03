{
  description = ''Library for parsing, stringifying, reading, and writing CSV (comma separated value) files'';
  inputs.src-csv-master.flake = false;
  inputs.src-csv-master.type = "github";
  inputs.src-csv-master.owner = "achesak";
  inputs.src-csv-master.repo = "nim-csv";
  inputs.src-csv-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-csv-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-csv-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-csv-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}