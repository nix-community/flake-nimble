{
  description = ''Self-contained markdown compiler generating self-contained HTML documents'';
  inputs.src-hastyscribe-v1_1_3.flake = false;
  inputs.src-hastyscribe-v1_1_3.type = "github";
  inputs.src-hastyscribe-v1_1_3.owner = "h3rald";
  inputs.src-hastyscribe-v1_1_3.repo = "hastyscribe";
  inputs.src-hastyscribe-v1_1_3.ref = "refs/tags/v1.1.3";
  
  
  inputs."nimrod".url = "path:../../../n/nimrod";
  inputs."nimrod".type = "github";
  inputs."nimrod".owner = "riinr";
  inputs."nimrod".repo = "flake-nimble";
  inputs."nimrod".ref = "flake-pinning";
  inputs."nimrod".dir = "nimpkgs/n/nimrod";

  outputs = { self, nixpkgs, src-hastyscribe-v1_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hastyscribe-v1_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hastyscribe-v1_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}