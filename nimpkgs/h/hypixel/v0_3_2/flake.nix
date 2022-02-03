{
  description = ''The Hypixel API, in Nim.'';
  inputs.src-hypixel-v0_3_2.flake = false;
  inputs.src-hypixel-v0_3_2.type = "github";
  inputs.src-hypixel-v0_3_2.owner = "tonogram";
  inputs.src-hypixel-v0_3_2.repo = "hypixel-nim";
  inputs.src-hypixel-v0_3_2.ref = "refs/tags/v0.3.2";
  
  outputs = { self, nixpkgs, src-hypixel-v0_3_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hypixel-v0_3_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hypixel-v0_3_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}