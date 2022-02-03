{
  description = ''A Beautiful Markdown Parser in the Nim World.'';
  inputs.src-markdown-v0_8_5.flake = false;
  inputs.src-markdown-v0_8_5.type = "github";
  inputs.src-markdown-v0_8_5.owner = "soasme";
  inputs.src-markdown-v0_8_5.repo = "nim-markdown";
  inputs.src-markdown-v0_8_5.ref = "refs/tags/v0.8.5";
  
  outputs = { self, nixpkgs, src-markdown-v0_8_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-markdown-v0_8_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-markdown-v0_8_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}