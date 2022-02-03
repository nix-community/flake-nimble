{
  description = ''A web framework inspired by ExpressJS 🐇⚡'';
  inputs.src-phoon-v0_1_0.flake = false;
  inputs.src-phoon-v0_1_0.type = "github";
  inputs.src-phoon-v0_1_0.owner = "ducdetronquito";
  inputs.src-phoon-v0_1_0.repo = "phoon";
  inputs.src-phoon-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-phoon-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-phoon-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-phoon-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}