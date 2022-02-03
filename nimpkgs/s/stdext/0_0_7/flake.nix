{
  description = ''Extends stdlib make it easy on some case'';
  inputs.src-stdext-0_0_7.flake = false;
  inputs.src-stdext-0_0_7.type = "github";
  inputs.src-stdext-0_0_7.owner = "zendbit";
  inputs.src-stdext-0_0_7.repo = "nim.stdext";
  inputs.src-stdext-0_0_7.ref = "refs/tags/0.0.7";
  
  outputs = { self, nixpkgs, src-stdext-0_0_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stdext-0_0_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-stdext-0_0_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}