{
  description = ''Old Win API library for Nim'';
  inputs.src-oldwinapi-v2_1_0.flake = false;
  inputs.src-oldwinapi-v2_1_0.type = "github";
  inputs.src-oldwinapi-v2_1_0.owner = "nim-lang";
  inputs.src-oldwinapi-v2_1_0.repo = "oldwinapi";
  inputs.src-oldwinapi-v2_1_0.ref = "refs/tags/v2.1.0";
  
  outputs = { self, nixpkgs, src-oldwinapi-v2_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-oldwinapi-v2_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-oldwinapi-v2_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}