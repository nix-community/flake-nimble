{
  description = ''Tools for working with re-frame ClojureScript projects'';
  inputs.src-reframe-0_4_1.flake = false;
  inputs.src-reframe-0_4_1.type = "github";
  inputs.src-reframe-0_4_1.owner = "rosado";
  inputs.src-reframe-0_4_1.repo = "reframe.nim";
  inputs.src-reframe-0_4_1.ref = "refs/tags/0.4.1";
  
  outputs = { self, nixpkgs, src-reframe-0_4_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-reframe-0_4_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-reframe-0_4_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}