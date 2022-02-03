{
  description = ''Neverwinter Nights 1 data accessor library'';
  inputs.src-neverwinter-1_4_1.flake = false;
  inputs.src-neverwinter-1_4_1.type = "github";
  inputs.src-neverwinter-1_4_1.owner = "niv";
  inputs.src-neverwinter-1_4_1.repo = "neverwinter.nim";
  inputs.src-neverwinter-1_4_1.ref = "refs/tags/1.4.1";
  
  outputs = { self, nixpkgs, src-neverwinter-1_4_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-neverwinter-1_4_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-neverwinter-1_4_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}