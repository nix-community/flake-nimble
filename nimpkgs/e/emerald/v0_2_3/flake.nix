{
  description = ''macro-based HTML templating engine'';
  inputs.src-emerald-v0_2_3.flake = false;
  inputs.src-emerald-v0_2_3.type = "github";
  inputs.src-emerald-v0_2_3.owner = "flyx";
  inputs.src-emerald-v0_2_3.repo = "emerald";
  inputs.src-emerald-v0_2_3.ref = "refs/tags/v0.2.3";
  
  outputs = { self, nixpkgs, src-emerald-v0_2_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-emerald-v0_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-emerald-v0_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}