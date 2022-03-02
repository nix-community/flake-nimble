{
  description = ''Library for parsing, stringifying, reading, and writing CSV (comma separated value) files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-csv-master.flake = false;
  inputs.src-csv-master.type = "github";
  inputs.src-csv-master.owner = "achesak";
  inputs.src-csv-master.repo = "nim-csv";
  inputs.src-csv-master.ref = "refs/heads/master";
  inputs.src-csv-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-csv-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-csv-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-csv-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}