{
  description = ''Encode/decode utf8 utf16 and utf32.'';
  inputs.src-encode-master.flake = false;
  inputs.src-encode-master.type = "github";
  inputs.src-encode-master.owner = "treeform";
  inputs.src-encode-master.repo = "encode";
  inputs.src-encode-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-encode-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-encode-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-encode-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}