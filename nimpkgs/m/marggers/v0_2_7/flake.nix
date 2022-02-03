{
  description = ''dialect of Markdown in pure Nim with focus on HTML output'';
  inputs.src-marggers-v0_2_7.flake = false;
  inputs.src-marggers-v0_2_7.type = "github";
  inputs.src-marggers-v0_2_7.owner = "metagn";
  inputs.src-marggers-v0_2_7.repo = "marggers";
  inputs.src-marggers-v0_2_7.ref = "refs/tags/v0.2.7";
  
  outputs = { self, nixpkgs, src-marggers-v0_2_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-marggers-v0_2_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-marggers-v0_2_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}