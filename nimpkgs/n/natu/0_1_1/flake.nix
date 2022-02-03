{
  description = ''Game Boy Advance development library'';
  inputs.src-natu-0_1_1.flake = false;
  inputs.src-natu-0_1_1.type = "github";
  inputs.src-natu-0_1_1.owner = "exelotl";
  inputs.src-natu-0_1_1.repo = "natu";
  inputs.src-natu-0_1_1.ref = "refs/tags/0.1.1";
  
  outputs = { self, nixpkgs, src-natu-0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-natu-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-natu-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}