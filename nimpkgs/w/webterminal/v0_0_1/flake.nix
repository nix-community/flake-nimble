{
  description = ''Very simple browser Javascript TTY web terminal'';
  inputs.src-webterminal-v0_0_1.flake = false;
  inputs.src-webterminal-v0_0_1.type = "github";
  inputs.src-webterminal-v0_0_1.owner = "JohnAD";
  inputs.src-webterminal-v0_0_1.repo = "webterminal";
  inputs.src-webterminal-v0_0_1.ref = "refs/tags/v0.0.1";
  
  outputs = { self, nixpkgs, src-webterminal-v0_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-webterminal-v0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-webterminal-v0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}