{
  description = ''Nim Hessian Serialization Library encodes/decodes data into the Hessian binary protocol'';
  inputs.src-nhsl-master.flake = false;
  inputs.src-nhsl-master.type = "github";
  inputs.src-nhsl-master.owner = "twist-vector";
  inputs.src-nhsl-master.repo = "nhsl";
  inputs.src-nhsl-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nhsl-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nhsl-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nhsl-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}