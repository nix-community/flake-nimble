{
  description = ''High-level and low-level interfaces to python and lua'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-NimBorg-master.flake = false;
  inputs.src-NimBorg-master.type = "github";
  inputs.src-NimBorg-master.owner = "micklat";
  inputs.src-NimBorg-master.repo = "NimBorg";
  inputs.src-NimBorg-master.ref = "refs/heads/master";
  inputs.src-NimBorg-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-NimBorg-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-NimBorg-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-NimBorg-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}