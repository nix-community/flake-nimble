{
  description = ''The Hypixel API, in Nim.'';
  inputs.src-hypixel-main.flake = false;
  inputs.src-hypixel-main.type = "github";
  inputs.src-hypixel-main.owner = "tonogram";
  inputs.src-hypixel-main.repo = "hypixel-nim";
  inputs.src-hypixel-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-hypixel-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hypixel-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hypixel-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}