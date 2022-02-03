{
  description = ''Neverwinter Nights 1 data accessor library'';
  inputs.src-neverwinter-1_2_3.flake = false;
  inputs.src-neverwinter-1_2_3.type = "github";
  inputs.src-neverwinter-1_2_3.owner = "niv";
  inputs.src-neverwinter-1_2_3.repo = "neverwinter.nim";
  inputs.src-neverwinter-1_2_3.ref = "refs/tags/1.2.3";
  
  outputs = { self, nixpkgs, src-neverwinter-1_2_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-neverwinter-1_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-neverwinter-1_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}