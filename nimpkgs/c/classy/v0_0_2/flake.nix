{
  description = ''typeclasses for Nim'';
  inputs.src-classy-v0_0_2.flake = false;
  inputs.src-classy-v0_0_2.type = "github";
  inputs.src-classy-v0_0_2.owner = "nigredo-tori";
  inputs.src-classy-v0_0_2.repo = "classy";
  inputs.src-classy-v0_0_2.ref = "refs/tags/v0.0.2";
  
  outputs = { self, nixpkgs, src-classy-v0_0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-classy-v0_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-classy-v0_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}