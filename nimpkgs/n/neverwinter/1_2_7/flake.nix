{
  description = ''Neverwinter Nights 1 data accessor library'';
  inputs.src-neverwinter-1_2_7.flake = false;
  inputs.src-neverwinter-1_2_7.type = "github";
  inputs.src-neverwinter-1_2_7.owner = "niv";
  inputs.src-neverwinter-1_2_7.repo = "neverwinter.nim";
  inputs.src-neverwinter-1_2_7.ref = "refs/tags/1.2.7";
  
  outputs = { self, nixpkgs, src-neverwinter-1_2_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-neverwinter-1_2_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-neverwinter-1_2_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}