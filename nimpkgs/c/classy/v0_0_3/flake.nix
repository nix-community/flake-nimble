{
  description = ''typeclasses for Nim'';
  inputs.src-classy-v0_0_3.flake = false;
  inputs.src-classy-v0_0_3.type = "github";
  inputs.src-classy-v0_0_3.owner = "nigredo-tori";
  inputs.src-classy-v0_0_3.repo = "classy";
  inputs.src-classy-v0_0_3.ref = "refs/tags/v0.0.3";
  
  outputs = { self, nixpkgs, src-classy-v0_0_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-classy-v0_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-classy-v0_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}