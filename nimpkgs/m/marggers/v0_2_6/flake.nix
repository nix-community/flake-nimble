{
  description = ''dialect of Markdown in pure Nim with focus on HTML output'';
  inputs.src-marggers-v0_2_6.flake = false;
  inputs.src-marggers-v0_2_6.type = "github";
  inputs.src-marggers-v0_2_6.owner = "metagn";
  inputs.src-marggers-v0_2_6.repo = "marggers";
  inputs.src-marggers-v0_2_6.ref = "refs/tags/v0.2.6";
  
  outputs = { self, nixpkgs, src-marggers-v0_2_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-marggers-v0_2_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-marggers-v0_2_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}