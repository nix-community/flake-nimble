{
  description = ''A wrapper to notification libraries'';
  inputs.src-notify-0_1_2.flake = false;
  inputs.src-notify-0_1_2.type = "github";
  inputs.src-notify-0_1_2.owner = "xbello";
  inputs.src-notify-0_1_2.repo = "notify-nim";
  inputs.src-notify-0_1_2.ref = "refs/tags/0.1.2";
  
  outputs = { self, nixpkgs, src-notify-0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-notify-0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-notify-0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}