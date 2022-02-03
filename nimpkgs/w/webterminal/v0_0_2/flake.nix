{
  description = ''Very simple browser Javascript TTY web terminal'';
  inputs.src-webterminal-v0_0_2.flake = false;
  inputs.src-webterminal-v0_0_2.type = "github";
  inputs.src-webterminal-v0_0_2.owner = "JohnAD";
  inputs.src-webterminal-v0_0_2.repo = "webterminal";
  inputs.src-webterminal-v0_0_2.ref = "refs/tags/v0.0.2";
  
  outputs = { self, nixpkgs, src-webterminal-v0_0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-webterminal-v0_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-webterminal-v0_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}