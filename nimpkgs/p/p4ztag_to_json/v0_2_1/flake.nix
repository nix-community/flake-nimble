{
  description = ''Convert Helix Version Control / Perforce (p4) -ztag output to JSON'';
  inputs.src-p4ztag_to_json-v0_2_1.flake = false;
  inputs.src-p4ztag_to_json-v0_2_1.type = "github";
  inputs.src-p4ztag_to_json-v0_2_1.owner = "kaushalmodi";
  inputs.src-p4ztag_to_json-v0_2_1.repo = "p4ztag_to_json";
  inputs.src-p4ztag_to_json-v0_2_1.ref = "refs/tags/v0.2.1";
  
  outputs = { self, nixpkgs, src-p4ztag_to_json-v0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-p4ztag_to_json-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-p4ztag_to_json-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}