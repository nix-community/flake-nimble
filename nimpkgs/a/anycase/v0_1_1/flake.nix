{
  description = ''Convert strings to any case'';
  inputs.src-anycase-v0_1_1.flake = false;
  inputs.src-anycase-v0_1_1.type = "github";
  inputs.src-anycase-v0_1_1.owner = "lamartire";
  inputs.src-anycase-v0_1_1.repo = "anycase";
  inputs.src-anycase-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, src-anycase-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-anycase-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-anycase-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}