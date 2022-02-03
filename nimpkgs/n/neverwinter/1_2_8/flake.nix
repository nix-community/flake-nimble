{
  description = ''Neverwinter Nights 1 data accessor library'';
  inputs.src-neverwinter-1_2_8.flake = false;
  inputs.src-neverwinter-1_2_8.type = "github";
  inputs.src-neverwinter-1_2_8.owner = "niv";
  inputs.src-neverwinter-1_2_8.repo = "neverwinter.nim";
  inputs.src-neverwinter-1_2_8.ref = "refs/tags/1.2.8";
  
  outputs = { self, nixpkgs, src-neverwinter-1_2_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-neverwinter-1_2_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-neverwinter-1_2_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}