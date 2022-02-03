{
  description = ''The Hypixel API, in Nim.'';
  inputs.src-hypixel-v0_3_1.flake = false;
  inputs.src-hypixel-v0_3_1.type = "github";
  inputs.src-hypixel-v0_3_1.owner = "tonogram";
  inputs.src-hypixel-v0_3_1.repo = "hypixel-nim";
  inputs.src-hypixel-v0_3_1.ref = "refs/tags/v0.3.1";
  
  outputs = { self, nixpkgs, src-hypixel-v0_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hypixel-v0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hypixel-v0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}