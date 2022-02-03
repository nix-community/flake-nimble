{
  description = ''xcb bindings'';
  inputs.src-xcb-v0_1_0.flake = false;
  inputs.src-xcb-v0_1_0.type = "github";
  inputs.src-xcb-v0_1_0.owner = "SolitudeSF";
  inputs.src-xcb-v0_1_0.repo = "xcb";
  inputs.src-xcb-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-xcb-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xcb-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-xcb-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}