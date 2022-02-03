{
  description = ''Extends stdlib make it easy on some case'';
  inputs.src-stdext-0_0_8.flake = false;
  inputs.src-stdext-0_0_8.type = "github";
  inputs.src-stdext-0_0_8.owner = "zendbit";
  inputs.src-stdext-0_0_8.repo = "nim.stdext";
  inputs.src-stdext-0_0_8.ref = "refs/tags/0.0.8";
  
  outputs = { self, nixpkgs, src-stdext-0_0_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stdext-0_0_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-stdext-0_0_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}