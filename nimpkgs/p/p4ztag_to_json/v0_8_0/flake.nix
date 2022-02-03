{
  description = ''Convert Helix Version Control / Perforce (p4) -ztag output to JSON'';
  inputs.src-p4ztag_to_json-v0_8_0.flake = false;
  inputs.src-p4ztag_to_json-v0_8_0.type = "github";
  inputs.src-p4ztag_to_json-v0_8_0.owner = "kaushalmodi";
  inputs.src-p4ztag_to_json-v0_8_0.repo = "p4ztag_to_json";
  inputs.src-p4ztag_to_json-v0_8_0.ref = "refs/tags/v0.8.0";
  
  
  inputs."regex".url = "path:../../../r/regex";
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";

  outputs = { self, nixpkgs, src-p4ztag_to_json-v0_8_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-p4ztag_to_json-v0_8_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-p4ztag_to_json-v0_8_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}