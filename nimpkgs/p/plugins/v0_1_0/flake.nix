{
  description = ''Plugin system for Nim'';
  inputs.src-plugins-v0_1_0.flake = false;
  inputs.src-plugins-v0_1_0.type = "github";
  inputs.src-plugins-v0_1_0.owner = "genotrance";
  inputs.src-plugins-v0_1_0.repo = "plugins";
  inputs.src-plugins-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-plugins-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-plugins-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-plugins-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}