{
  description = ''macro-based HTML templating engine'';
  inputs.src-emerald-v0_2_1.flake = false;
  inputs.src-emerald-v0_2_1.type = "github";
  inputs.src-emerald-v0_2_1.owner = "flyx";
  inputs.src-emerald-v0_2_1.repo = "emerald";
  inputs.src-emerald-v0_2_1.ref = "refs/tags/v0.2.1";
  
  outputs = { self, nixpkgs, src-emerald-v0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-emerald-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-emerald-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}