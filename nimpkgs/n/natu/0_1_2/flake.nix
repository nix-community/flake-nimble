{
  description = ''Game Boy Advance development library'';
  inputs.src-natu-0_1_2.flake = false;
  inputs.src-natu-0_1_2.type = "github";
  inputs.src-natu-0_1_2.owner = "exelotl";
  inputs.src-natu-0_1_2.repo = "natu";
  inputs.src-natu-0_1_2.ref = "refs/tags/0.1.2";
  
  outputs = { self, nixpkgs, src-natu-0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-natu-0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-natu-0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}