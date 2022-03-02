{
  description = ''Nim Hessian Serialization Library encodes/decodes data into the Hessian binary protocol'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nhsl-master.flake = false;
  inputs.src-nhsl-master.type = "github";
  inputs.src-nhsl-master.owner = "twist-vector";
  inputs.src-nhsl-master.repo = "nhsl";
  inputs.src-nhsl-master.ref = "refs/heads/master";
  inputs.src-nhsl-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nhsl-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nhsl-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nhsl-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}