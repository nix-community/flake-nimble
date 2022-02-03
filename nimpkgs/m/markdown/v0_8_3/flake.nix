{
  description = ''A Beautiful Markdown Parser in the Nim World.'';
  inputs.src-markdown-v0_8_3.flake = false;
  inputs.src-markdown-v0_8_3.type = "github";
  inputs.src-markdown-v0_8_3.owner = "soasme";
  inputs.src-markdown-v0_8_3.repo = "nim-markdown";
  inputs.src-markdown-v0_8_3.ref = "refs/tags/v0.8.3";
  
  outputs = { self, nixpkgs, src-markdown-v0_8_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-markdown-v0_8_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-markdown-v0_8_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}