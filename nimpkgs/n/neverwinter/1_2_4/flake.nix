{
  description = ''Neverwinter Nights 1 data accessor library'';
  inputs.src-neverwinter-1_2_4.flake = false;
  inputs.src-neverwinter-1_2_4.type = "github";
  inputs.src-neverwinter-1_2_4.owner = "niv";
  inputs.src-neverwinter-1_2_4.repo = "neverwinter.nim";
  inputs.src-neverwinter-1_2_4.ref = "refs/tags/1.2.4";
  
  outputs = { self, nixpkgs, src-neverwinter-1_2_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-neverwinter-1_2_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-neverwinter-1_2_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}