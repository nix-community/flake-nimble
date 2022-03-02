{
  description = ''Use a Structure of Arrays like an Array of Structures'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-aossoa-master.flake = false;
  inputs.src-aossoa-master.type = "github";
  inputs.src-aossoa-master.owner = "guibar64";
  inputs.src-aossoa-master.repo = "aossoa";
  inputs.src-aossoa-master.ref = "refs/heads/master";
  inputs.src-aossoa-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-aossoa-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-aossoa-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-aossoa-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}