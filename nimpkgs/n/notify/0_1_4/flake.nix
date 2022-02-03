{
  description = ''A wrapper to notification libraries'';
  inputs.src-notify-0_1_4.flake = false;
  inputs.src-notify-0_1_4.type = "github";
  inputs.src-notify-0_1_4.owner = "xbello";
  inputs.src-notify-0_1_4.repo = "notify-nim";
  inputs.src-notify-0_1_4.ref = "refs/tags/0.1.4";
  
  outputs = { self, nixpkgs, src-notify-0_1_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-notify-0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-notify-0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}