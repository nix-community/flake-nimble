{
  description = ''Convert strings to any case'';
  inputs.src-anycase-v0_1_0.flake = false;
  inputs.src-anycase-v0_1_0.type = "github";
  inputs.src-anycase-v0_1_0.owner = "lamartire";
  inputs.src-anycase-v0_1_0.repo = "anycase";
  inputs.src-anycase-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-anycase-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-anycase-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-anycase-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}