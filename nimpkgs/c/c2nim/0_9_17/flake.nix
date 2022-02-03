{
  description = ''c2nim is a tool to translate Ansi C code to Nim.'';
  inputs.src-c2nim-0_9_17.flake = false;
  inputs.src-c2nim-0_9_17.type = "github";
  inputs.src-c2nim-0_9_17.owner = "nim-lang";
  inputs.src-c2nim-0_9_17.repo = "c2nim";
  inputs.src-c2nim-0_9_17.ref = "refs/tags/0.9.17";
  
  outputs = { self, nixpkgs, src-c2nim-0_9_17, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-c2nim-0_9_17;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-c2nim-0_9_17"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}