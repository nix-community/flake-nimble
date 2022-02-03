{
  description = ''A library for scientific computations in pure Nim'';
  inputs.src-science-v0_2_2.flake = false;
  inputs.src-science-v0_2_2.type = "github";
  inputs.src-science-v0_2_2.owner = "ruivieira";
  inputs.src-science-v0_2_2.repo = "nim-science";
  inputs.src-science-v0_2_2.ref = "refs/tags/v0.2.2";
  
  outputs = { self, nixpkgs, src-science-v0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-science-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-science-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}