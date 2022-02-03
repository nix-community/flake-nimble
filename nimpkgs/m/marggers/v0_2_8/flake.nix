{
  description = ''dialect of Markdown in pure Nim with focus on HTML output'';
  inputs.src-marggers-v0_2_8.flake = false;
  inputs.src-marggers-v0_2_8.type = "github";
  inputs.src-marggers-v0_2_8.owner = "metagn";
  inputs.src-marggers-v0_2_8.repo = "marggers";
  inputs.src-marggers-v0_2_8.ref = "refs/tags/v0.2.8";
  
  outputs = { self, nixpkgs, src-marggers-v0_2_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-marggers-v0_2_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-marggers-v0_2_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}