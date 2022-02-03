{
  description = ''Say hissatsuwaza (special attack) on your terminal.'';
  inputs.src-sayhissatsuwaza-v0_1_0.flake = false;
  inputs.src-sayhissatsuwaza-v0_1_0.type = "github";
  inputs.src-sayhissatsuwaza-v0_1_0.owner = "jiro4989";
  inputs.src-sayhissatsuwaza-v0_1_0.repo = "sayhissatsuwaza";
  inputs.src-sayhissatsuwaza-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-sayhissatsuwaza-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sayhissatsuwaza-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sayhissatsuwaza-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}