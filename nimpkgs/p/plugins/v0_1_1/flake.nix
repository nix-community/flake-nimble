{
  description = ''Plugin system for Nim'';
  inputs.src-plugins-v0_1_1.flake = false;
  inputs.src-plugins-v0_1_1.type = "github";
  inputs.src-plugins-v0_1_1.owner = "genotrance";
  inputs.src-plugins-v0_1_1.repo = "plugins";
  inputs.src-plugins-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, src-plugins-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-plugins-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-plugins-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}