{
  description = ''A Beautiful Markdown Parser in the Nim World.'';
  inputs.src-markdown-v0_3_1.flake = false;
  inputs.src-markdown-v0_3_1.type = "github";
  inputs.src-markdown-v0_3_1.owner = "soasme";
  inputs.src-markdown-v0_3_1.repo = "nim-markdown";
  inputs.src-markdown-v0_3_1.ref = "refs/tags/v0.3.1";
  
  outputs = { self, nixpkgs, src-markdown-v0_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-markdown-v0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-markdown-v0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}