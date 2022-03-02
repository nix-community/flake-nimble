{
  description = ''grab statement for importing Nimble packages, similar to Groovy's Grape'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-grab-master.flake = false;
  inputs.src-grab-master.type = "github";
  inputs.src-grab-master.owner = "metagn";
  inputs.src-grab-master.repo = "grab";
  inputs.src-grab-master.ref = "refs/heads/master";
  inputs.src-grab-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-grab-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-grab-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-grab-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}