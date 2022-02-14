{
  description = ''⚡️ Just... yellin' for changes! File System Monitor for devs'';
  inputs.src-watchout-main.flake = false;
  inputs.src-watchout-main.type = "github";
  inputs.src-watchout-main.owner = "openpeep";
  inputs.src-watchout-main.repo = "watchout";
  inputs.src-watchout-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-watchout-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-watchout-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-watchout-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}