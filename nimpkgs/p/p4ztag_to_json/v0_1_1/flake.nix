{
  description = ''Convert Helix Version Control / Perforce (p4) -ztag output to JSON'';
  inputs.src-p4ztag_to_json-v0_1_1.flake = false;
  inputs.src-p4ztag_to_json-v0_1_1.type = "github";
  inputs.src-p4ztag_to_json-v0_1_1.owner = "kaushalmodi";
  inputs.src-p4ztag_to_json-v0_1_1.repo = "p4ztag_to_json";
  inputs.src-p4ztag_to_json-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, src-p4ztag_to_json-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-p4ztag_to_json-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-p4ztag_to_json-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}