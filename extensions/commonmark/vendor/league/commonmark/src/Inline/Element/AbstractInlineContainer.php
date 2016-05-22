<?php

/*
 * This file is part of the league/commonmark package.
 *
 * (c) Colin O'Dell <colinodell@gmail.com>
 *
 * Original code based on the CommonMark JS reference parser (http://bitly.com/commonmark-js)
 *  - (c) John MacFarlane
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace League\CommonMark\Inline\Element;

abstract class AbstractInlineContainer extends AbstractInline
{
    /**
     * @var AbstractInline[]
     */
    protected $children = [];

    /**
     * @param AbstractInline[] $contents
     */
    public function __construct(array $contents = [])
    {
        $this->setChildren($contents);
    }

    /**
     * @return AbstractInline[]
     */
    public function getChildren()
    {
        return $this->children;
    }

    /**
     * @param AbstractInline[] $contents
     *
     * @return $this
     */
    public function setChildren($contents)
    {
        $this->children = $contents;
        foreach ($contents as $content) {
            $content->setParent($this);
        }

        return $this;
    }
}
