{
  description = ''Neverwinter Nights 1 data accessor library'';
  inputs.src-neverwinter-1_2_9.flake = false;
  inputs.src-neverwinter-1_2_9.type = "github";
  inputs.src-neverwinter-1_2_9.owner = "niv";
  inputs.src-neverwinter-1_2_9.repo = "neverwinter.nim";
  inputs.src-neverwinter-1_2_9.ref = "refs/tags/1.2.9";
  
  outputs = { self, nixpkgs, src-neverwinter-1_2_9, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-neverwinter-1_2_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-neverwinter-1_2_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}