{
  description = ''OpenDocument Spreadhseet reader'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-odsreader-master.flake = false;
  inputs.src-odsreader-master.type = "github";
  inputs.src-odsreader-master.owner = "dariolah";
  inputs.src-odsreader-master.repo = "odsreader";
  inputs.src-odsreader-master.ref = "refs/heads/master";
  inputs.src-odsreader-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-odsreader-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-odsreader-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-odsreader-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}