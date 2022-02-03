{
  description = ''Neverwinter Nights 1 data accessor library'';
  inputs.src-neverwinter-1_2_10.flake = false;
  inputs.src-neverwinter-1_2_10.type = "github";
  inputs.src-neverwinter-1_2_10.owner = "niv";
  inputs.src-neverwinter-1_2_10.repo = "neverwinter.nim";
  inputs.src-neverwinter-1_2_10.ref = "refs/tags/1.2.10";
  
  outputs = { self, nixpkgs, src-neverwinter-1_2_10, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-neverwinter-1_2_10;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-neverwinter-1_2_10"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}